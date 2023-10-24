// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroAndFriendsNamesWithFragmentTwiceQuery: GraphQLQuery {
  public static let operationName: String = "HeroAndFriendsNamesWithFragmentTwice"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "fb791b8d40d4a404b65a51886a29493d8e43053e14552d112f248565a11c893f",
    definition: .init(
      #"query HeroAndFriendsNamesWithFragmentTwice($episode: Episode) { hero(episode: $episode) { __typename friends { __typename ...CharacterName } ... on Droid { __typename friends { __typename ...CharacterName } } } }"#,
      fragments: [CharacterName.self]
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "hero": hero._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.self)
        ]
      ))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("friends", [Friend?]?.self),
        .inlineFragment(AsDroid.self),
      ] }

      /// The friends of the character, or an empty list if they have none
      public var friends: [Friend?]? { __data["friends"] }

      public var asDroid: AsDroid? { _asInlineFragment() }

      public init(
        __typename: String,
        friends: [Friend?]? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
            "friends": friends._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero.self)
          ]
        ))
      }

      /// Hero.Friend
      ///
      /// Parent Type: `Character`
      public struct Friend: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(CharacterName.self),
        ] }

        /// The name of the character
        public var name: String { __data["name"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var characterName: CharacterName { _toFragment() }
        }

        public init(
          __typename: String,
          name: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": __typename,
              "name": name,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero.Friend.self),
              ObjectIdentifier(CharacterName.self)
            ]
          ))
        }
      }

      /// Hero.AsDroid
      ///
      /// Parent Type: `Droid`
      public struct AsDroid: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero
        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Droid }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("friends", [Friend?]?.self),
        ] }

        /// This droid's friends, or an empty list if they have none
        public var friends: [Friend?]? { __data["friends"] }

        public init(
          friends: [Friend?]? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Droid.typename,
              "friends": friends._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero.self),
              ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero.AsDroid.self)
            ]
          ))
        }

        /// Hero.AsDroid.Friend
        ///
        /// Parent Type: `Character`
        public struct Friend: StarWarsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(CharacterName.self),
          ] }

          /// The name of the character
          public var name: String { __data["name"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var characterName: CharacterName { _toFragment() }
          }

          public init(
            __typename: String,
            name: String
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": __typename,
                "name": name,
              ],
              fulfilledFragments: [
                ObjectIdentifier(HeroAndFriendsNamesWithFragmentTwiceQuery.Data.Hero.AsDroid.Friend.self),
                ObjectIdentifier(CharacterName.self)
              ]
            ))
          }
        }
      }
    }
  }
}
