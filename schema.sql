CREATE TABLE karma(
	id				BIGSERIAL PRIMARY KEY			NOT NULL,
	name			VARCHAR							NOT NULL,
	added			TIMESTAMP WITHOUT TIME ZONE		NOT NULL,
	altered			TIMESTAMP WITHOUT TIME ZONE		NOT NULL,
	score			INTEGER							NOT NULL,
	pluses			INTEGER							NOT NULL DEFAULT 0,
	minuses			INTEGER							NOT NULL DEFAULT 0,
	neutrals		INTEGER							NOT NULL DEFAULT 0
);
CREATE TABLE users(
	id				BIGSERIAL PRIMARY KEY			NOT NULL,
	name			VARCHAR							NOT NULL,
	is_superuser	BOOLEAN							NOT NULL,
	can_alias		BOOLEAN							NOT NULL
);
CREATE TABLE karma_reasons(
	kid				BIGSERIAL REFERENCES karma(id)	NOT NULL,
	uid				BIGSERIAL REFERENCES users(id)	NOT NULL,
	added			TIMESTAMP WITHOUT TIME ZONE		NOT NULL,
	score			INTEGER							NOT NULL,
	reason			VARCHAR
);
