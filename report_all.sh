#!/bin/bash -x

bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor children/common_children_reporter=Children::CommonChildrenReporter > output/children.html
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor teachers/common_teachers_reporter=Teachers::CommonTeachersReporter > output/teachers.html
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor parents/common_parents_reporter=Parents::CommonParentsReporter > output/parents.html
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,lib/processors/by_question_mapper_processor=ByQuestionMapperProcessor comparings/common_comparing_reporter=Comparings::CommonComparingReporter > output/comparing.html

bundle exec ruby report.rb input/results children/children_storage=Children::ChildrenStorage children/children_processor=Children::ChildrenProcessor children/table_children_reporter=Children::TableChildrenReporter > output/children.csv
bundle exec ruby report.rb input/results teachers/teachers_storage=Teachers::TeachersStorage teachers/teachers_processor=Teachers::TeachersProcessor teachers/table_teachers_reporter=Teachers::TableTeachersReporter > output/teachers.csv
bundle exec ruby report.rb input/results parents/parents_storage=Parents::ParentsStorage parents/parents_processor=Parents::ParentsProcessor parents/table_parents_reporter=Parents::TableParentsReporter > output/parents.csv
bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor comparings/table_comparing_reporter=Comparings::TableComparingReporter > output/comparing.csv

bundle exec ruby report.rb input/results comparings/comparing_storage=Comparings::ComparingStorage comparings/comparing_processor=Comparings::ComparingProcessor,generations/by_question_and_generation_mapper_processor=Generations::ByQuestionAndGenerationMapperProcessor generations/common_generations_reporter=Generations::CommonGenerationsReporter > output/generations.html
