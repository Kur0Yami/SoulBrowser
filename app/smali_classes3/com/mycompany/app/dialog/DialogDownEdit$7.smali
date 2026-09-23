.class Lcom/mycompany/app/dialog/DialogDownEdit$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$7;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$7;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->dismiss()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 30
    .line 31
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreview;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 40
    .line 41
    iget-object v5, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    const-string v6, "image/*"

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogPreview;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownEdit$11;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownEdit$11;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
