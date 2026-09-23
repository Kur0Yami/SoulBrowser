.class public Lcom/mycompany/app/help/KeyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZZLcom/mycompany/app/help/KeyHelper$KeyHelperListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/help/KeyHelper;->b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lcom/mycompany/app/help/KeyHelper;->g:I

    .line 19
    .line 20
    const/high16 p2, 0x42c80000    # 100.0f

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/mycompany/app/help/KeyHelper;->a:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Lcom/mycompany/app/help/KeyHelper$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/mycompany/app/help/KeyHelper$1;-><init>(Lcom/mycompany/app/help/KeyHelper;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    :goto_0
    return v2

    .line 20
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 21
    .line 22
    xor-int/2addr v0, v2

    .line 23
    return v0
.end method

.method public final b(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/help/KeyHelper;->a()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
