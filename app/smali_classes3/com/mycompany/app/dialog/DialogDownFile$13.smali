.class Lcom/mycompany/app/dialog/DialogDownFile$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$13;->a:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$13;->a:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->g0:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->g0:Z

    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$14;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$14;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method
