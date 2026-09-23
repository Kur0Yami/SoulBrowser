.class final Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Doctype"
.end annotation


# instance fields
.field public final d:Lorg/jsoup/parser/TokenData;

.field public e:Ljava/lang/String;

.field public final f:Lorg/jsoup/parser/TokenData;

.field public final g:Lorg/jsoup/parser/TokenData;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

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
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->d:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->e:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->f:Lorg/jsoup/parser/TokenData;

    .line 22
    .line 23
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->g:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->h:Z

    .line 32
    .line 33
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
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->d:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->e:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->f:Lorg/jsoup/parser/TokenData;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->g:Lorg/jsoup/parser/TokenData;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->h:Z

    .line 24
    .line 25
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!doctype "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/Token$Doctype;->d:Lorg/jsoup/parser/TokenData;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, ">"

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
