.class Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Character"
.end annotation


# instance fields
.field public final d:Lorg/jsoup/parser/TokenData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 2
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Token$Character;)V
    .locals 2

    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 6
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 9
    iget v1, p1, Lorg/jsoup/parser/Token;->b:I

    iput v1, p0, Lorg/jsoup/parser/Token;->b:I

    .line 10
    iget v1, p1, Lorg/jsoup/parser/Token;->c:I

    iput v1, p0, Lorg/jsoup/parser/Token;->c:I

    .line 11
    iget-object p1, p1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 13
    iput-object p1, v0, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/parser/Token;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
