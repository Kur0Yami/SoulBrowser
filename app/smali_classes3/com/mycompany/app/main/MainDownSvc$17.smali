.class Lcom/mycompany/app/main/MainDownSvc$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$17;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$17;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$17;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSvc$17;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownSvc$17;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/main/MainDownSvc$17;->e:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$17;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$17;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$17;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$17;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3, v4}, Lcom/mycompany/app/down/DownParseM3u8;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->j:Ljava/util/List;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->k:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$17;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$17;->e:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1, p1}, Lcom/mycompany/app/main/MainDownSvc;->I(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
