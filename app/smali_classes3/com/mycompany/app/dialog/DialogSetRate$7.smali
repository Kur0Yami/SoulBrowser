.class Lcom/mycompany/app/dialog/DialogSetRate$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetRate;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$7;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate$7;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetRate;->i0:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainSelectAdapter;->x(ILandroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
