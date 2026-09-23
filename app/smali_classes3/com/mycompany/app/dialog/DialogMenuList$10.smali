.class Lcom/mycompany/app/dialog/DialogMenuList$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$10;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$10;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_20:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    iget v2, v0, Lcom/mycompany/app/dialog/DialogMenuList;->k:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->D:Z

    .line 33
    .line 34
    return-void
.end method
