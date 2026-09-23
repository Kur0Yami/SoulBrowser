.class Lcom/mycompany/app/dialog/DialogQuickEdit$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogQuickEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$11;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$11;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogQuickEdit;->F(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$11;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 4
    .line 5
    if-nez p2, :cond_2

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 21
    .line 22
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iput v1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 25
    .line 26
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 43
    .line 44
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogQuickEdit;->F(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method
