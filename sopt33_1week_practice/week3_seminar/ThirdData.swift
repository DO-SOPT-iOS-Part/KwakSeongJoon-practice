
import Foundation

struct ItemListData {
    let image: String
    let item: String
    let location: String
    let price: String
    var isLike: Bool
}

extension ItemListData {
    static func dummy() -> [ItemListData] {
        return [ .init(image: "image1",
                        item: "외장하드",
                        location: "노원구 중계2.3동",
                        price: "60,000원",
                        isLike: false),
                  .init(image: "image2",
                        item: "게이밍 의자",
                        location: "노원구 상계 8동",
                        price: "30,000원",
                        isLike: false),
                  .init(image: "image3",
                        item: "노트북 팝니다",
                        location: "노원구 상계9동",
                        price: "120,000원",
                        isLike: true),
                  .init(image: "image4",
                        item: "닌텐도 이카드 리더기 이사가야해서 잡동사니 급처해요 아무나 사가주시면 너무 감사할거같은데 그쪽도 자겁치까를 아세요?",
                        location: "의정부시 송산2동",
                        price: "50,000원",
                        isLike: true),
                  .init(image: "image1",
                        item: "외장하드",
                        location: "노원구 중계2.3동",
                        price: "60,000원",
                        isLike: false),
                  .init(image: "image2",
                        item: "게이밍 의자",
                        location: "노원구 상계 8동",
                        price: "30,000원",
                        isLike: false),
                  .init(image: "image3",
                        item: "노트북 팝니다",
                        location: "노원구 상계9동",
                        price: "120,000원",
                        isLike: true),
                  .init(image: "image4",
                        item: "닌텐도 이카드 리더기 이사가야해서 잡동사니 급처해요 아무나 사가주시면 너무 감사할거같은데 그쪽도 자겁치까를 아세요?",
                        location: "의정부시 송산2동",
                        price: "50,000원",
                        isLike: true)]
    }
}

struct ImageCollectionData {
    let image: String
    var isLiked: Bool
    
    init(image: String, isLiked: Bool) {
        self.image = image
        self.isLiked = isLiked
    }
}

extension ImageCollectionData {
    static func dummy() -> [ImageCollectionData] {
        return [.init(image: "image1", isLiked: true),
                .init(image: "image2", isLiked: true),
                .init(image: "image3", isLiked: false),
                .init(image: "image4", isLiked: false),
                .init(image: "image5", isLiked: true),
                .init(image: "image6", isLiked: false),
                .init(image: "image7", isLiked: true),
                .init(image: "image8", isLiked: false),
                .init(image: "image1", isLiked: false),
                .init(image: "image2", isLiked: false),
                .init(image: "image3", isLiked: true),
                .init(image: "image4", isLiked: false),
                .init(image: "image5", isLiked: true),
                .init(image: "image6", isLiked: true),
                .init(image: "image7", isLiked: false),
                .init(image: "image8", isLiked: false),
                .init(image: "image1", isLiked: false),
                .init(image: "image2", isLiked: false),
                .init(image: "image3", isLiked: false),
                .init(image: "image4", isLiked: false),
                .init(image: "image5", isLiked: false),
                .init(image: "image6", isLiked: false),
                .init(image: "image7", isLiked: false),
                .init(image: "image8", isLiked: false),
                .init(image: "image1", isLiked: true),
                .init(image: "image2", isLiked: true),
                .init(image: "image3", isLiked: false),
                .init(image: "image4", isLiked: false),
                .init(image: "image5", isLiked: false),
                .init(image: "image6", isLiked: false),
                .init(image: "image7", isLiked: false),
                .init(image: "image8", isLiked: false),
                .init(image: "image1", isLiked: true),
                .init(image: "image2", isLiked: false),
                .init(image: "image3", isLiked: false),
                .init(image: "image4", isLiked: true),
                .init(image: "image5", isLiked: false),
                .init(image: "image6", isLiked: false),
                .init(image: "image7", isLiked: true),
                .init(image: "image8", isLiked: true)]
    }
}


