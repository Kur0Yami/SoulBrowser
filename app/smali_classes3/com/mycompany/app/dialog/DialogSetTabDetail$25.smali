.class Lcom/mycompany/app/dialog/DialogSetTabDetail$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainConst;->M:[I

    .line 10
    .line 11
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;->a:I

    .line 12
    .line 13
    rem-int/2addr p2, v2

    .line 14
    aget p2, v0, p2

    .line 15
    .line 16
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 17
    .line 18
    if-ne v0, p2, :cond_1

    .line 19
    .line 20
    :goto_0
    return v1

    .line 21
    :cond_1
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E()V

    .line 24
    .line 25
    .line 26
    return v1
.end method
