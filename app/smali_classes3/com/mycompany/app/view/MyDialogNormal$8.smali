.class Lcom/mycompany/app/view/MyDialogNormal$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogNormal;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$8;->a:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$8;->a:Lcom/mycompany/app/view/MyDialogNormal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$8;->a:Lcom/mycompany/app/view/MyDialogNormal;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->l()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
