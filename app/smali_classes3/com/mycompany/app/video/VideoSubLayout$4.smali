.class Lcom/mycompany/app/video/VideoSubLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoSubLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoSubLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout$4;->c:Lcom/mycompany/app/video/VideoSubLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout$4;->c:Lcom/mycompany/app/video/VideoSubLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
