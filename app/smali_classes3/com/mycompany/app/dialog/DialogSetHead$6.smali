.class Lcom/mycompany/app/dialog/DialogSetHead$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetHead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead$6;->a:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead$6;->a:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetHead;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetHead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetHead$7;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSetHead$7;-><init>(Lcom/mycompany/app/dialog/DialogSetHead;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
