#!/bin/bash -x

find input/results -name '*.json' -size 0c -exec rm {} \;
find input/results -name '*.json' -size 2c -exec rm {} \;
fdupes -N -d -1 input/results

mkdir -p "output"

mkdir -p "output/Школьники"
bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,children/children_useless_units_processor=Children::ChildrenUselessUnitsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor children/common_children_reporter=Children::CommonChildrenReporter > "output/Школьники/Школьники.html"
bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,lib/processors/analysis_prepare_processor=AnalysisPrepareProcessor children/table_children_reporter=Children::TableChildrenReporter > "output/Школьники/Школьники.csv"
bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,children/children_useless_units_processor=Children::ChildrenUselessUnitsProcessor,children/generations/generations_children_mapper_processor=Children::Generations::GenerationsChildrenMapperProcessor children/generations/generations_children_reporter=Children::Generations::GenerationsChildrenReporter > "output/Школьники/По поколениям.html"
bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,children/children_useless_units_processor=Children::ChildrenUselessUnitsProcessor,children/regions/regions_children_mapper_processor=Children::Regions::RegionsChildrenMapperProcessor children/regions/regions_children_reporter=Children::Regions::RegionsChildrenReporter > "output/Школьники/По регионам.html"
bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,children/children_useless_units_processor=Children::ChildrenUselessUnitsProcessor,children/populations/populations_children_mapper_processor=Children::Populations::PopulationsChildrenMapperProcessor children/populations/populations_children_reporter=Children::Populations::PopulationsChildrenReporter > "output/Школьники/По типам населенного пункта.html"

mkdir -p "output/Учителя"
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,teachers/teachers_useless_units_processor=Teachers::UselessUnitsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor teachers/common_teachers_reporter=Teachers::CommonTeachersReporter > "output/Учителя/Учителя.html"
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,lib/processors/analysis_prepare_processor=AnalysisPrepareProcessor teachers/table_teachers_reporter=Teachers::TableTeachersReporter > "output/Учителя/Учителя.csv"
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,teachers/teachers_useless_units_processor=Teachers::UselessUnitsProcessor,teachers/generations/generations_teachers_mapper_processor=Teachers::Generations::GenerationsTeachersMapperProcessor teachers/generations/generations_teachers_reporter=Teachers::Generations::GenerationsTeachersReporter > "output/Учителя/По поколениям.html"
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,teachers/teachers_useless_units_processor=Teachers::UselessUnitsProcessor,teachers/regions/regions_teachers_mapper_processor=Teachers::Regions::RegionsTeachersMapperProcessor teachers/regions/regions_teachers_reporter=Teachers::Regions::RegionsTeachersReporter > "output/Учителя/По регионам.html"
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,teachers/teachers_useless_units_processor=Teachers::UselessUnitsProcessor,teachers/populations/populations_teachers_mapper_processor=Teachers::Populations::PopulationsTeachersMapperProcessor teachers/populations/populations_teachers_reporter=Teachers::Populations::PopulationsTeachersReporter > "output/Учителя/По типам населенного пункта.html"

mkdir -p "output/Родители"
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,parents/teachers_useless_units_processor=Parents::UselessUnitsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor parents/common_parents_reporter=Parents::CommonParentsReporter > "output/Родители/Родители.html"
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,lib/processors/analysis_prepare_processor=AnalysisPrepareProcessor parents/table_parents_reporter=Parents::TableParentsReporter > "output/Родители/Родители.csv"
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,parents/generations/generations_parents_mapper_processor=Parents::Generations::GenerationsParentsMapperProcessor parents/generations/generations_parents_reporter=Parents::Generations::GenerationsParentsReporter > "output/Родители/По поколениям.html"
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,parents/teachers_useless_units_processor=Parents::UselessUnitsProcessor,parents/regions/regions_parents_mapper_processor=Parents::Regions::RegionsParentsMapperProcessor parents/regions/regions_parents_reporter=Parents::Regions::RegionsParentsReporter > "output/Родители/По регионам.html"
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,parents/teachers_useless_units_processor=Parents::UselessUnitsProcessor,parents/populations/populations_parents_mapper_processor=Parents::Populations::PopulationsParentsMapperProcessor parents/populations/populations_parents_reporter=Parents::Populations::PopulationsParentsReporter > "output/Родители/По типам населенного пункта.html"

mkdir -p "output/Все"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor comparings/common_comparing_reporter=Comparings::CommonComparingReporter > "output/Все/Все.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,lib/processors/analysis_prepare_processor=AnalysisPrepareProcessor comparings/table_comparing_reporter=Comparings::TableComparingReporter > "output/Все/Все.csv"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,comparings/professions/professions_comparing_mapper_processor=Comparings::Professions::ProfessionsComparingMapperProcessor comparings/professions/professions_comparing_reporter=Comparings::Professions::ProfessionsComparingReporter > "output/Все/По типам анкеты.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/generations/generations_comparing_mapper_processor=Comparings::Generations::GenerationsComparingMapperProcessor comparings/generations/generations_comparing_reporter=Comparings::Generations::GenerationsComparingReporter > "output/Все/По поколениям.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,comparings/regions/regions_comparing_mapper_processor=Comparings::Regions::RegionsComparingMapperProcessor comparings/regions/regions_comparing_reporter=Comparings::Regions::RegionsComparingReporter > "output/Все/По регионам.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,comparings/populations/populations_comparing_mapper_processor=Comparings::Populations::PopulationsComparingMapperProcessor comparings/populations/populations_comparing_reporter=Comparings::Populations::PopulationsComparingReporter > "output/Все/По типам населенного пункта.html"

mkdir -p "output/BB"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,bb/comparing_bb_processor=Bb::ComparingBbProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor bb/common_comparing_bb_reporter=Bb::CommonComparingBbReporter > "output/BB/BB.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,bb/comparing_bb_processor=Bb::ComparingBbProcessor,comparings/populations/populations_comparing_mapper_processor=Comparings::Populations::PopulationsComparingMapperProcessor bb/populations/populations_comparing_bb_reporter=Bb::Populations::PopulationsComparingBbReporter > "output/BB/По типам населенного пункта.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,bb/comparing_bb_processor=Bb::ComparingBbProcessor,comparings/regions/regions_comparing_mapper_processor=Comparings::Regions::RegionsComparingMapperProcessor bb/regions/regions_comparing_bb_reporter=Bb::Regions::RegionsComparingBbReporter > "output/BB/По регионам.html"

mkdir -p "output/X"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,x/comparing_x_processor=X::ComparingXProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor x/common_comparing_x_reporter=X::CommonComparingXReporter > "output/X/X.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,x/comparing_x_processor=X::ComparingXProcessor,comparings/populations/populations_comparing_mapper_processor=Comparings::Populations::PopulationsComparingMapperProcessor x/populations/populations_comparing_x_reporter=X::Populations::PopulationsComparingXReporter > "output/X/По типам населенного пункта.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,x/comparing_x_processor=X::ComparingXProcessor,comparings/regions/regions_comparing_mapper_processor=Comparings::Regions::RegionsComparingMapperProcessor x/regions/regions_comparing_x_reporter=X::Regions::RegionsComparingXReporter > "output/X/По регионам.html"

mkdir -p "output/Y"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,y/comparing_y_processor=Y::ComparingYProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor y/common_comparing_y_reporter=Y::CommonComparingYReporter > "output/Y/Y.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,y/comparing_y_processor=Y::ComparingYProcessor,comparings/populations/populations_comparing_mapper_processor=Comparings::Populations::PopulationsComparingMapperProcessor y/populations/populations_comparing_y_reporter=Y::Populations::PopulationsComparingYReporter > "output/Y/По типам населенного пункта.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,y/comparing_y_processor=Y::ComparingYProcessor,comparings/regions/regions_comparing_mapper_processor=Comparings::Regions::RegionsComparingMapperProcessor y/regions/regions_comparing_y_reporter=Y::Regions::RegionsComparingYReporter > "output/Y/По регионам.html"

mkdir -p "output/Z"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,z/comparing_z_processor=Z::ComparingZProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor z/common_comparing_z_reporter=Z::CommonComparingZReporter > "output/Z/Z.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,z/comparing_z_processor=Z::ComparingZProcessor,comparings/populations/populations_comparing_mapper_processor=Comparings::Populations::PopulationsComparingMapperProcessor z/populations/populations_comparing_z_reporter=Z::Populations::PopulationsComparingZReporter > "output/Z/По типам населенного пункта.html"
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,comparings/comparing_useless_units_processor=Comparings::UselessUnitsProcessor,z/comparing_z_processor=Z::ComparingZProcessor,comparings/regions/regions_comparing_mapper_processor=Comparings::Regions::RegionsComparingMapperProcessor z/regions/regions_comparing_z_reporter=Z::Regions::RegionsComparingZReporter > "output/Z/По регионам.html"
