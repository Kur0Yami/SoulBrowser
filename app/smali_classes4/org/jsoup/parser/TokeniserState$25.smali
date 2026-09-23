.class final enum Lorg/jsoup/parser/TokeniserState$25;
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
    const-string v0, "ScriptDataEscapedLessthanSign"

    .line 2
    .line 3
    const/16 v1, 0x18

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
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3c

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/TokenData;

    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->f(C)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->f(C)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->F:Lorg/jsoup/parser/TokeniserState$28;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const/16 v0, 0x2f

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->o(C)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->e()V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->D:Lorg/jsoup/parser/TokeniserState$26;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->f(C)V

    .line 55
    .line 56
    .line 57
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->z:Lorg/jsoup/parser/TokeniserState$22;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
