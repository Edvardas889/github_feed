import 'package:bloc_test/bloc_test.dart';
import 'package:either_dart/either.dart';
import 'package:github_feed/features/feed_details/bloc/feed_details_cubit.dart';
import 'package:github_feed/features/feed_details/repositories/feed_details_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockFeedDetailsRepository extends Mock
    implements FeedDetailsRepository {}

void main() {
  late _MockFeedDetailsRepository mockFeedDetailsRepository;

  final atomXmlExample =
      "<?xml version=\"1.0\" encoding=\"utf-8\"?><feed xmlns=\"http://www.w3.org/2005/Atom\">   <title>FYI Center for Software Developers</title>   <subtitle>FYI (For Your Information) Center for Software Developers with large collection of FAQs, tutorials and tips codes for application and wWeb developers on Java, .NET, C, PHP, JavaScript, XML, HTML, CSS, RSS, MySQL and Oracle - dev.fyicenter.com.</subtitle>   <link rel=\"self\" href=\"http://dev.fyicenter.com/atom_xml.php\"/>   <id>http://dev.fyicenter.com/atom_xml.php</id>   <updated>2017-09-22T03:58:52+02:00</updated>   <author>      <name>FYIcenter.com</name>   </author>   <rights>Copyright (c) 2017 FYIcenter.com</rights>   <category term=\"Programming\"/>   <category term=\"Computer\"/>   <category term=\"Developer\"/>   <entry>      <title>Use Developer Portal Internally</title>      <link rel=\"alternate\" href=\"http://dev.fyicenter.com/1000702_Use_Developer_Portal_Internally.html\"/>      <id>http://dev.fyicenter.com/1000702_Use_Developer_Portal_Internally.html</id>      <updated>2017-09-20T13:29:08+02:00</updated>      <summary type=\"html\">&lt;img align=\'left\' width=\'64\' height=\'64\' src=\'http://dev.fyicenter.com/Azure-API/_icon_Azure-API.png\' />How to use the Developer Portal internally by you as the publisher? Normally, the Developer Portal of an Azure API Management Service is used by client developers. But as a publisher, you can also use the Developer Portal to test API operations internally. You can follow this tutorial to access the ...  - Rank: 120; Updated: 2017-09-20 13:29:06 -> &lt;a href=\'http://dev.fyicenter.com/1000702_Use_Developer_Portal_Internally.html\'>Source&lt;/a></summary>      <author>         <name>FYIcenter.com</name>      </author>      <category term=\"Microsoft\"/>   </entry>   <entry>      <title>Using Azure API Management Developer Portal</title>      <link rel=\"alternate\" href=\"http://dev.fyicenter.com/1000701_Using_Azure_API_Management_Developer_Portal.html\"/>      <id>http://dev.fyicenter.com/1000701_Using_Azure_API_Management_Developer_Portal.html</id>      <updated>2017-09-20T13:29:07+02:00</updated>      <summary type=\"html\">&lt;img align=\'left\' width=\'64\' height=\'64\' src=\'http://dev.fyicenter.com/Azure-API/_icon_Azure-API.png\' />Where to find tutorials on Using Azure API Management Developer Portal? Here is a list of tutorials to answer many frequently asked questions compiled by FYIcenter.com team on Using Azure API Management Developer Portal: Use Developer Portal Internally What Can I See on Developer Portal What I You T...  - Rank: 120; Updated: 2017-09-20 13:29:06 -> &lt;a href=\'http://dev.fyicenter.com/1000701_Using_Azure_API_Management_Developer_Portal.html\'>Source&lt;/a></summary>      <author>         <name>FYIcenter.com</name>      </author>      <category term=\"Microsoft\"/>   </entry>   <entry>      <title>Add API to API Products</title>      <link rel=\"alternate\" href=\"http://dev.fyicenter.com/1000700_Add_API_to_API_Products.html\"/>      <id>http://dev.fyicenter.com/1000700_Add_API_to_API_Products.html</id>      <updated>2017-09-20T13:29:06+02:00</updated>      <summary type=\"html\">&lt;img align=\'left\' width=\'64\' height=\'64\' src=\'http://dev.fyicenter.com/Azure-API/_icon_Azure-API.png\' />How to add an API to an API product for internal testing on the Publisher Portal of an Azure API Management Service? You can follow this tutorial to add an API to an API product on the Publisher Portal of an Azure API Management Service. 1. Click API from the left menu on the Publisher Portal. You s...  - Rank: 119; Updated: 2017-09-20 13:29:06 -> &lt;a href=\'http://dev.fyicenter.com/1000700_Add_API_to_API_Products.html\'>Source&lt;/a></summary>      <author>         <name>FYIcenter.com</name>      </author>      <category term=\"Microsoft\"/>   </entry></feed>";

  group("FeedDetailsCubit", () {
    late FeedDetailsCubit feedDetails;

    setUp(() {
      mockFeedDetailsRepository = _MockFeedDetailsRepository();

      feedDetails = FeedDetailsCubit(mockFeedDetailsRepository);
    });

    tearDown(() {
      feedDetails.close();
    });

    blocTest(
      "loads main feed urls",
      build: () {
        when(() => mockFeedDetailsRepository.getAtom("url"))
            .thenAnswer((_) async => Right(atomXmlExample));
        return feedDetails;
      },
      act: (cubit) => cubit.load("url"),
      expect: () => [
        FeedDetailsState.loading(),
        isA<LoadedFeedDetailsState>()
      ],
    );

    blocTest(
      "returns error when details fetch",
      build: () {
        when(() => mockFeedDetailsRepository.getAtom("url"))
            .thenAnswer((_) async => Left("Error"));
        return feedDetails;
      },
      act: (cubit) => cubit.load("url"),
      expect: () => [
        FeedDetailsState.loading(),
        FeedDetailsState.error(errorMsg: "Error"),
      ],
    );
  });
}
