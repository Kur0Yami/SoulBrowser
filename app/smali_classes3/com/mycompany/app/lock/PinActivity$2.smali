.class Lcom/mycompany/app/lock/PinActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$2;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity$2;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 13
    .line 14
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
