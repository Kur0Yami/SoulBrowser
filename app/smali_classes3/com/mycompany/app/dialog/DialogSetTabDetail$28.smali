.class Lcom/mycompany/app/dialog/DialogSetTabDetail$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$28;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$28;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 9
    .line 10
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 13
    .line 14
    sget v4, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 18
    .line 19
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 20
    .line 21
    iput v3, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->r:I

    .line 22
    .line 23
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->s:Z

    .line 24
    .line 25
    iput v4, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
