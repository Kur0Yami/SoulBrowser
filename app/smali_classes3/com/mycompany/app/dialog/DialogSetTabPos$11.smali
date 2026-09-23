.class Lcom/mycompany/app/dialog/DialogSetTabPos$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$11;->a:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->C0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$11;->a:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$11;->a:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

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
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->C0:[I

    .line 10
    .line 11
    rem-int/lit8 p2, p2, 0x5

    .line 12
    .line 13
    aget p2, v0, p2

    .line 14
    .line 15
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 16
    .line 17
    if-ne v0, p2, :cond_1

    .line 18
    .line 19
    :goto_0
    return v1

    .line 20
    :cond_1
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->B(Lcom/mycompany/app/dialog/DialogSetTabPos;Z)V

    .line 23
    .line 24
    .line 25
    return v1
.end method
