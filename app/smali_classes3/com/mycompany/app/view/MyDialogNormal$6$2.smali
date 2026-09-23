.class Lcom/mycompany/app/view/MyDialogNormal$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogNormal$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$6$2;->c:Lcom/mycompany/app/view/MyDialogNormal$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$6$2;->c:Lcom/mycompany/app/view/MyDialogNormal$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal$6;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 15
    .line 16
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
