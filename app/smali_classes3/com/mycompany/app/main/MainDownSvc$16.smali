.class Lcom/mycompany/app/main/MainDownSvc$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$16;->d:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$16;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$16;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSvc$16;->c:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$16;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$16;->d:Lcom/mycompany/app/main/MainDownSvc;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$16;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$16;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p1}, Lcom/mycompany/app/main/MainDownSvc;->I(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
