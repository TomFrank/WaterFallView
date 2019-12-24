import SwiftUI

@available(iOS 13, OSX 10.15, tvOS 13, watchOS 6, *)
public struct WaterFallView<Data, ID, Content>: View where Content : View, ID : Hashable, Data: RandomAccessCollection {
    private let data: Array<Data.Element>
    private let dataId: KeyPath<Data.Element, ID>
    private let content: (Data.Element) -> Content
    
    private var even: Array<Data.Element> {
        stride(from: 0, to: data.count, by: 2).map {self.data[$0]}
    }
    
    private var odd: Array<Data.Element> {
        stride(from: 1, to: data.count, by: 2).map {self.data[$0]}
    }
    
    public var body: some View {
        HStack(alignment: VerticalAlignment.top) {
            VStack {
                ForEach(even, id: dataId) {
                    self.content($0)
                }
            }
            .padding([.trailing], 2.5)
            VStack {
                ForEach(odd, id: dataId) {
                    self.content($0)
                }
            }
            .padding([.leading], 2.5)
        }
        .padding([.leading, .trailing], 5)
    }
}

// MARK: - Initializers
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension WaterFallView {

    /// Creates an instance that uniquely identifies views across updates based
    /// on the `id` key path to a property on an underlying data element.
    ///
    /// - Parameter data: A collection of data.
    /// - Parameter id: Key path to a property on an underlying data element.
    /// - Parameter content: A function that can be used to generate content on demand given underlying data.
    public init(_ data: Data, id: KeyPath<Data.Element, ID>, content: @escaping (Data.Element) -> Content) {
        self.data = data.map { $0 }
        self.dataId = id
        self.content = content
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension WaterFallView where ID == Data.Element.ID, Data.Element : Identifiable {

    /// Creates an instance that uniquely identifies views across updates based
    /// on the identity of the underlying data element.
    ///
    /// - Parameter data: A collection of identified data.
    /// - Parameter content: A function that can be used to generate content on demand given underlying data.
    public init(_ data: Data, content: @escaping (Data.Element) -> Content) {
        self.data = data.map { $0 }
        self.dataId = \Data.Element.id
        self.content = content
    }
}
