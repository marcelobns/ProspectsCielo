
CREATE TABLE mc_codes
(
  id           bigint       NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  code         varchar(4)   NOT NULL UNIQUE,
  program_type varchar(300) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pre_registrations
(
  id                bigint       NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  registration_type varchar(100) NOT NULL,
  mc_code_id        bigint       NOT NULL,
  email             varchar(300) NOT NULL UNIQUE,
  name              varchar(300) NOT NULL,
  attributes        json         NOT NULL,
  op                varchar(50)  NOT NULL,
  at                timestamp    NOT NULL,
  PRIMARY KEY (id)
);

COMMENT ON COLUMN pre_registrations.registration_type IS 'pessoa_fisica, pessoa_juridica';

COMMENT ON COLUMN pre_registrations.op IS 'created, updated';

COMMENT ON COLUMN pre_registrations.at IS 'current_timestamp';

CREATE TABLE prospects_queue
(
  id                  bigint    NOT NULL GENERATED ALWAYS AS IDENTITY UNIQUE,
  pre_registration_id bigint    NOT NULL,
  queueing_at         timestamp NOT NULL DEFAULT current_timestamp,
  op                  int       NOT NULL,
  PRIMARY KEY (id)
);

COMMENT ON COLUMN prospects_queue.op IS 'created, updated';

ALTER TABLE prospects_queue
  ADD CONSTRAINT FK_pre_registrations_TO_prospects_queue
    FOREIGN KEY (pre_registration_id)
    REFERENCES pre_registrations (id);

ALTER TABLE pre_registrations
  ADD CONSTRAINT FK_mc_codes_TO_pre_registrations
    FOREIGN KEY (mc_code_id)
    REFERENCES mc_codes (id);
