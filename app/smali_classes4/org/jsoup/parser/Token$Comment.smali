.class final Lorg/jsoup/parser/Token$Comment;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation


# instance fields
.field public final d:Lorg/jsoup/parser/TokenData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->d:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
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
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->d:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final g(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->d:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!--"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/Token$Comment;->d:Lorg/jsoup/parser/TokenData;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "-->"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
