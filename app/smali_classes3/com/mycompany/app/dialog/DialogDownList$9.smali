.class Lcom/mycompany/app/dialog/DialogDownList$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$9;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$9;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->A0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return p3

    .line 14
    :cond_1
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogDownList;->A0:Z

    .line 15
    .line 16
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownList$9$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownList$9$1;-><init>(Lcom/mycompany/app/dialog/DialogDownList$9;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return p3
.end method
