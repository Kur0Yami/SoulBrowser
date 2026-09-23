.class Lcom/mycompany/app/down/DownParseM3u8$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/down/DownParseM3u8$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8$1$1$1$1;->a:Lcom/mycompany/app/down/DownParseM3u8$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8$1$1$1$1;->a:Lcom/mycompany/app/down/DownParseM3u8$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/down/DownParseM3u8$1$1$1;->c:Lcom/mycompany/app/down/DownParseM3u8$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/down/DownParseM3u8$1$1;->a:Lcom/mycompany/app/down/DownParseM3u8$1;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8$1;->h:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/down/DownParseM3u8$1;->i:Lcom/mycompany/app/down/DownParseM3u8;

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->d:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {v1, p1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->b:Z

    .line 21
    .line 22
    iput-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
