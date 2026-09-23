.class final enum Lorg/jsoup/parser/TokeniserState$68;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CdataSection"

    .line 2
    .line 3
    const/16 v1, 0x43

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3

    .line 1
    const-string v0, "]]>"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    :goto_0
    new-instance p2, Lorg/jsoup/parser/Token$CData;

    .line 27
    .line 28
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p2}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p2, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->d()V

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 45
    .line 46
    .line 47
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
