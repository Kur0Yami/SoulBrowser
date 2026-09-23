.class Lcom/mycompany/app/web/WebViewActivity$45$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$45;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$45$1;->c:Lcom/mycompany/app/web/WebViewActivity$45;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$45$1;->c:Lcom/mycompany/app/web/WebViewActivity$45;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$45;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->z1:I

    .line 19
    .line 20
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 21
    .line 22
    mul-int/lit8 v3, v3, 0x4

    .line 23
    .line 24
    add-int/2addr v3, v2

    .line 25
    if-ge v1, v3, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t1:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t1:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n8(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void
.end method
