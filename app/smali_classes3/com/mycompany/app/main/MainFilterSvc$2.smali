.class Lcom/mycompany/app/main/MainFilterSvc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainFilterSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainFilterSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc$2;->c:Lcom/mycompany/app/main/MainFilterSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$2;->c:Lcom/mycompany/app/main/MainFilterSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/MainFilterSvc;->b:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainFilterSvc;->f:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainFilterSvc;->e:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;->a(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
