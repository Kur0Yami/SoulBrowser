.class Lcom/mycompany/app/down/DownParseM3u8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;

.field public final synthetic i:Lcom/mycompany/app/down/DownParseM3u8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/down/DownParseM3u8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->i:Lcom/mycompany/app/down/DownParseM3u8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->h:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/mycompany/app/down/DownParseM3u8$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/down/DownParseM3u8$1$1;-><init>(Lcom/mycompany/app/down/DownParseM3u8$1;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->i:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->f:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/mycompany/app/down/DownParseM3u8$1;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/down/DownParseM3u8;->a(Lcom/mycompany/app/down/DownParseM3u8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
