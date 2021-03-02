DROP TABLE blocks;
CREATE TABLE blocks(
	block_ID SERIAL PRIMARY KEY,
	block_hours FLOAT(32),
	--instructor_materials_blk VARCHAR(256),
	max_enrl_blk INT,
	min_enrl_blk INT,
	prep_time_hours_blk FLOAT(32),
	--retraining_interval_blk INT,
	--safety_related_blk VARCHAR(1),
	security_class_id VARCHAR(10),
	--student_materials_blk VARCHAR(256),
	block_number VARCHAR(2),
	block_desc VARCHAR(256)
);

INSERT INTO blocks (block_hours, max_enrl_blk, min_enrl_blk, prep_time_hours_blk, security_class_id, block_number, block_desc)  VALUES (10, 16, 6, 2, 'UNCLASS', 1, 'Military Cyberspace and Emerging Concepts');

DROP TABLE units;
CREATE TABLE units(
	unit_id SERIAL PRIMARY KEY,
	unit_number INT,
	unit_description VARCHAR(256)
	/*
	student_materials_unit VARCHAR(2000),
	a_v_aids VARCHAR(2000),
	assignment VARCHAR(2000),
	attention VARCHAR(2000),
	motivation VARCHAR(2000),
	review VARCHAR(2000),
	overview VARCHAR(2000),
	transition VARCHAR(2000),
	summary VARCHAR(2000),
	remotivation VARCHAR(2000),
	closure VARCHAR(2000),
	*/
);

INSERT INTO units (unit_number, unit_description) VALUES (1, 'Joint Cyberspace Doctrine'), (2, 'Air Force Cyberspace Operations'), (3, 'AF Enterprise Structure');

DROP TABLE objectives;
CREATE TABLE objectives(
	objective_id SERIAL PRIMARY KEY,
	application VARCHAR(1000),
	evaluation VARCHAR(1000),
	inst_guidance VARCHAR(1000),
	--instructor_materials_obj VARCHAR(256),
	--measurement_obj VARCHAR(20),
	--mir_desc VARCHAR(1000),
	--mir_hours INT,
	--mir_num INT,
	--mir_type VARCHAR(1),
	objective_hours FLOAT(32),
	objective_statement VARCHAR(2000),
	--operational VARCHAR(1),
	--prep_time_hours_obj INT,
	--safety_related_obj VARCHAR(1),
	--security_class_id INT,
	--training_type INT,
	unit_number VARCHAR(2)
	--objective_letter VARCHAR(2)
);

INSERT INTO objectives (application, evaluation, inst_guidance, objective_hours, objective_statement, unit_number) VALUES ('None', 'Deferred to Block Test.', 'Introduce Students to JP 3-12 and its descriptions of key terms and concepts relating to cyberspace.', 3.5, 'Identify basic facts and terms about the importance of cyberspace power as it relates to air and space power.', 1), ('None', 'Deferred to Block Test.', 'Describe the various types of threats to Joint Force use of cyberspace, including nation states, non-state actors, individual orsmall group threats, and accidents or natural hazards.', 1, 'Identify basic facts and terms about the challenges to the Joint Forces use of cyberspace.', 1), ('None', 'Deferred to Block Test.', 'Describe the three cyberspace missions of the DoD: DODIN Operations, DCO, and OCO.', 1.5, 'Identify basic facts and terms about the three cyberspace missions of the DoD.', 1);

DROP TABLE tasks;
CREATE TABLE tasks(
	task_id SERIAL PRIMARY KEY,
	task_desc VARCHAR(2000),
	task_number INT,
	parent_id INT
);

INSERT INTO tasks (task_desc, task_number, parent_id) VALUES ('Identify the objectives of the IA program.', 1, 1), ('Identify IA terms.', 2, 1), ('Identify organizational IA roles and responsibilites.', 3, 1), ('Describe risk management.', 1, 2), ('Discuss merits of drinking coffee during class time.', 1, 3);
