.class Lcom/mycompany/app/main/MainDownSvc$22$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22$2;->c:Lcom/mycompany/app/main/MainDownSvc$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$22$2;->c:Lcom/mycompany/app/main/MainDownSvc$22;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    iput v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
