.class Lcom/mycompany/app/web/WebGridDialog$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$18;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$18;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->y()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$18;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->u0:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->u0:I

    .line 22
    .line 23
    const/16 v3, 0x64

    .line 24
    .line 25
    if-ne v1, v3, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    iget v2, v0, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    iput v2, v0, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    if-ne v2, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    const/16 v3, 0x32

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ge v2, v1, :cond_5

    .line 47
    .line 48
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 53
    .line 54
    :cond_5
    :goto_0
    iget v0, v0, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 55
    .line 56
    return v0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$18;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 13
    .line 14
    :cond_0
    iget v0, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method
