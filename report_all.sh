#!/bin/bash -x

find input/results -name '*.json' -size 0c -exec rm {} \;
find input/results -name '*.json' -size 2c -exec rm {} \;
fdupes -N -d -1 input/results

bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor children/common_children_reporter=Children::CommonChildrenReporter > output/children.html
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor teachers/common_teachers_reporter=Teachers::CommonTeachersReporter > output/teachers.html
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor parents/common_parents_reporter=Parents::CommonParentsReporter > output/parents.html
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor comparings/common_comparing_reporter=Comparings::CommonComparingReporter > output/comparing.html

bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor children/table_children_reporter=Children::TableChildrenReporter > output/children.csv
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor teachers/table_teachers_reporter=Teachers::TableTeachersReporter > output/teachers.csv
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor parents/table_parents_reporter=Parents::TableParentsReporter > output/parents.csv
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor comparings/table_comparing_reporter=Comparings::TableComparingReporter > output/comparing.csv

bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,professions/by_question_and_profession_mapper_processor=Professions::ByQuestionAndProfessionMapperProcessor professions/common_professions_reporter=Professions::CommonProfessionsReporter > output/professions.html

bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,generations/by_question_and_generation_mapper_processor=Generations::ByQuestionAndGenerationMapperProcessor generations/common_generations_reporter=Generations::CommonGenerationsReporter > output/generations.html

bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,regions/by_question_and_region_mapper_processor=Regions::ByQuestionAndRegionMapperProcessor regions/common_regions_reporter=Regions::CommonRegionsReporter > output/regions.html

bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,populations/by_question_and_population_mapper_processor=Populations::ByQuestionAndPopulationMapperProcessor populations/common_populations_reporter=Populations::CommonPopulationsReporter > output/populations.html
