.class Lcom/mycompany/app/dialog/DialogSeekBright$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$12;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekBright;->D0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$12;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->w0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->w0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$12;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p2, 0x0

    .line 14
    :goto_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->x0:Z

    .line 15
    .line 16
    if-ne v0, p2, :cond_2

    .line 17
    .line 18
    :goto_1
    return v1

    .line 19
    :cond_2
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->x0:Z

    .line 20
    .line 21
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->e0:Landroid/view/Window;

    .line 22
    .line 23
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 24
    .line 25
    invoke-static {v0, v2, p2}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->E()V

    .line 29
    .line 30
    .line 31
    return v1
.end method
