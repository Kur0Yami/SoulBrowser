.class Lcom/mycompany/app/dialog/DialogViewRead$110$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead$110;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$110;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$110$2;->a:Lcom/mycompany/app/dialog/DialogViewRead$110;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$110$2;->a:Lcom/mycompany/app/dialog/DialogViewRead$110;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$110;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$110;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "text/plain"

    .line 12
    .line 13
    invoke-static {v1, v0, v4, v2, v3}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$110$2;->a:Lcom/mycompany/app/dialog/DialogViewRead$110;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$110;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->N2:Lcom/mycompany/app/view/MySnackbar;

    .line 7
    .line 8
    return-void
.end method
