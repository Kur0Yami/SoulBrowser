.class Lcom/mycompany/app/dialog/DialogSetHistory$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetHistory;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$6;->a:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetHistory;->p0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory$6;->a:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$6;->a:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

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
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetHistory;->p0:[I

    .line 10
    .line 11
    rem-int/lit8 p2, p2, 0x7

    .line 12
    .line 13
    iget v3, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 14
    .line 15
    if-ne v3, p2, :cond_1

    .line 16
    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 19
    .line 20
    aget v2, v2, p2

    .line 21
    .line 22
    iput v2, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->m0:I

    .line 23
    .line 24
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetHistory;->q0:[I

    .line 25
    .line 26
    aget p2, v2, p2

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetHistory;->r0:[I

    .line 34
    .line 35
    iget p1, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 36
    .line 37
    aget p1, v0, p1

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    .line 41
    .line 42
    return v1
.end method
