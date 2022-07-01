
from sqlmodel import Field, Session, SQLModel, create_engine, select


class Character(SQLModel, table=True):
    name: str = Field(primary_key=True)
    description: str

    __table_args__ = {'schema': 'smb_one'}


engine = create_engine('postgresql://postgresuser:postgrespass@localhost:5423/nintendo')


def select_characters():
    with Session(engine) as session:
        statement = select(Character)
        results = session.exec(statement)
        for character in results:
            print(character)

select_characters()
