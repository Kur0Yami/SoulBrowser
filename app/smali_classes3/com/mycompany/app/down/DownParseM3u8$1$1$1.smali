.class Lcom/mycompany/app/down/DownParseM3u8$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/down/DownParseM3u8$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/down/DownParseM3u8$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8$1$1$1;->c:Lcom/mycompany/app/down/DownParseM3u8$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8$1$1$1;->c:Lcom/mycompany/app/down/DownParseM3u8$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/down/DownParseM3u8$1$1;->a:Lcom/mycompany/app/down/DownParseM3u8$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8$1;->i:Lcom/mycompany/app/down/DownParseM3u8;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/down/DownParseM3u8$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    sget-boolean v3, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/down/DownParseM3u8$1;->g:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Lcom/mycompany/app/down/DownParseM3u8$1$1$1$1;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/mycompany/app/down/DownParseM3u8$1$1$1$1;-><init>(Lcom/mycompany/app/down/DownParseM3u8$1$1$1;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v1, v2, v4, v0, v3}, Lcom/mycompany/app/down/DownParseM3u8;->a(Lcom/mycompany/app/down/DownParseM3u8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
