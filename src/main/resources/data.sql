INSERT INTO roles(name)
SELECT 'ADMIN'
WHERE NOT EXISTS(SELECT * FROM roles WHERE name = 'ADMIN');

INSERT INTO roles(name)
SELECT 'USER'
WHERE NOT EXISTS(SELECT * FROM roles WHERE name = 'USER');

INSERT INTO users (email, password, enabled)
SELECT 'admin@admin.com', '$2a$18$6rp.uon7JL1W4.SbH1ZLke9PUsqs6akrtowwMTlwqtlkdfU3XsHlO', TRUE
WHERE NOT EXISTS(SELECT * FROM users WHERE email = 'admin@admin.com');

INSERT INTO user_roles(user_id, role_id) SELECT 1,1 WHERE NOT EXISTS(SELECT * FROM user_roles WHERE user_id = 1);