import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:end_to_end_test/aliases/aliased_hero.data.gql.dart'
    show
        GAliasedHeroData,
        GAliasedHeroData_empireHero,
        GAliasedHeroData_jediHero;
import 'package:end_to_end_test/aliases/aliased_hero.req.gql.dart'
    show GAliasedHero;
import 'package:end_to_end_test/aliases/aliased_hero.var.gql.dart'
    show GAliasedHeroVars;
import 'package:end_to_end_test/date_serializer.dart' show DateSerializer;
import 'package:end_to_end_test/fragments/hero_with_fragments.data.gql.dart'
    show
        GHeroWithFragmentsData,
        GHeroWithFragmentsData_hero,
        GHeroWithFragmentsData_hero_friendsConnection,
        GHeroWithFragmentsData_hero_friendsConnection_edges,
        GHeroWithFragmentsData_hero_friendsConnection_edges_node,
        GheroDataData,
        GcomparisonFieldsData,
        GcomparisonFieldsData_friendsConnection,
        GcomparisonFieldsData_friendsConnection_edges,
        GcomparisonFieldsData_friendsConnection_edges_node;
import 'package:end_to_end_test/fragments/hero_with_fragments.req.gql.dart'
    show GHeroWithFragments;
import 'package:end_to_end_test/fragments/hero_with_fragments.var.gql.dart'
    show GHeroWithFragmentsVars, GheroDataVars, GcomparisonFieldsVars;
import 'package:end_to_end_test/graphql/schema.schema.gql.dart'
    show GEpisode, GLengthUnit, GReviewInput, GColorInput, GISODate;
import 'package:end_to_end_test/interfaces/hero_for_episode.data.gql.dart'
    show
        GHeroForEpisodeData,
        GHeroForEpisodeData_hero,
        GHeroForEpisodeData_hero__base,
        GHeroForEpisodeData_hero__asDroid,
        GDroidFragmentData;
import 'package:end_to_end_test/interfaces/hero_for_episode.req.gql.dart'
    show GHeroForEpisode;
import 'package:end_to_end_test/interfaces/hero_for_episode.var.gql.dart'
    show GHeroForEpisodeVars, GDroidFragmentVars;
import 'package:end_to_end_test/no_vars/hero_no_vars.data.gql.dart'
    show GHeroNoVarsData, GHeroNoVarsData_hero;
import 'package:end_to_end_test/no_vars/hero_no_vars.req.gql.dart'
    show GHeroNoVars;
import 'package:end_to_end_test/no_vars/hero_no_vars.var.gql.dart'
    show GHeroNoVarsVars;
import 'package:end_to_end_test/scalars/review_with_date.data.gql.dart'
    show GReviewWithDateData, GReviewWithDateData_createReview;
import 'package:end_to_end_test/scalars/review_with_date.req.gql.dart'
    show GReviewWithDate;
import 'package:end_to_end_test/scalars/review_with_date.var.gql.dart'
    show GReviewWithDateVars;
import 'package:end_to_end_test/variables/create_review.data.gql.dart'
    show GCreateReviewData, GCreateReviewData_createReview;
import 'package:end_to_end_test/variables/create_review.req.gql.dart'
    show GCreateReview;
import 'package:end_to_end_test/variables/create_review.var.gql.dart'
    show GCreateReviewVars;
import 'package:end_to_end_test/variables/human_with_args.data.gql.dart'
    show GHumanWithArgsData, GHumanWithArgsData_human;
import 'package:end_to_end_test/variables/human_with_args.req.gql.dart'
    show GHumanWithArgs;
import 'package:end_to_end_test/variables/human_with_args.var.gql.dart'
    show GHumanWithArgsVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(DateSerializer())
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GHeroWithFragmentsData,
  GHeroWithFragmentsData_hero,
  GHeroWithFragmentsData_hero_friendsConnection,
  GHeroWithFragmentsData_hero_friendsConnection_edges,
  GHeroWithFragmentsData_hero_friendsConnection_edges_node,
  GheroDataData,
  GcomparisonFieldsData,
  GcomparisonFieldsData_friendsConnection,
  GcomparisonFieldsData_friendsConnection_edges,
  GcomparisonFieldsData_friendsConnection_edges_node,
  GHeroNoVarsData,
  GHeroNoVarsData_hero,
  GReviewWithDateData,
  GReviewWithDateData_createReview,
  GCreateReviewData,
  GCreateReviewData_createReview,
  GHumanWithArgsData,
  GHumanWithArgsData_human,
  GAliasedHeroData,
  GAliasedHeroData_empireHero,
  GAliasedHeroData_jediHero,
  GHeroForEpisodeData,
  GHeroForEpisodeData_hero,
  GHeroForEpisodeData_hero__base,
  GHeroForEpisodeData_hero__asDroid,
  GDroidFragmentData,
  GHeroWithFragments,
  GHeroNoVars,
  GReviewWithDate,
  GCreateReview,
  GHumanWithArgs,
  GAliasedHero,
  GHeroForEpisode,
  GEpisode,
  GLengthUnit,
  GReviewInput,
  GColorInput,
  GISODate,
  GHeroWithFragmentsVars,
  GheroDataVars,
  GcomparisonFieldsVars,
  GHeroNoVarsVars,
  GReviewWithDateVars,
  GCreateReviewVars,
  GHumanWithArgsVars,
  GAliasedHeroVars,
  GHeroForEpisodeVars,
  GDroidFragmentVars
])
final Serializers serializers = _serializersBuilder.build();
