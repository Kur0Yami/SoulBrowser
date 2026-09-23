.class Lcom/mycompany/app/dialog/DialogSeekWeb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$3;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$3;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    new-instance p3, Lcom/mycompany/app/dialog/DialogSeekWeb$3$1;

    .line 10
    .line 11
    invoke-direct {p3, p0}, Lcom/mycompany/app/dialog/DialogSeekWeb$3$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb$3;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return p2
.end method
