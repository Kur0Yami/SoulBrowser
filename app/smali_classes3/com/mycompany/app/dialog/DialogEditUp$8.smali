.class Lcom/mycompany/app/dialog/DialogEditUp$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$8;->a:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp$8;->a:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogEditUp;->E(IZ)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
