from typing import List

from sqlmodel import Field, Session, SQLModel, create_engine, select


class Character(SQLModel, table=True):
    """ Defines the character class """
    name: str = Field(primary_key=True)
    description: str
    # Set the schema (if not default)
    __table_args__ = {'schema': 'smb_one'}

    def __repr__(self):
        return f"<Character(name='{self.name}', description='{self.description}')>"


# Create the Postgres engine to connect to the database running in Docker
engine = create_engine('postgresql://postgresuser:postgrespass@localhost:5423/nintendo')


def get_characters() -> List[Character]:
    """ Get all characters from the database """
    with Session(engine) as session:
        statement = select(Character)
        return [char for char in session.exec(statement)]


# Retrieve and print the characters
characters = get_characters()
print(characters)
