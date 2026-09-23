.class Lcom/mycompany/app/view/MyBarView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyBarView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarView$6;->c:Lcom/mycompany/app/view/MyBarView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView$6;->c:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    array-length v3, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    move v3, v2

    .line 21
    :goto_1
    if-eq v1, v3, :cond_3

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/lit8 v4, v1, 0x3

    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 31
    .line 32
    mul-int/2addr v4, v5

    .line 33
    if-le v4, v3, :cond_4

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move v3, v2

    .line 38
    :goto_2
    iget-boolean v4, v0, Lcom/mycompany/app/view/MyBarView;->w:Z

    .line 39
    .line 40
    if-ne v4, v3, :cond_5

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_5
    iput-boolean v3, v0, Lcom/mycompany/app/view/MyBarView;->w:Z

    .line 44
    .line 45
    :goto_3
    if-ge v2, v1, :cond_6

    .line 46
    .line 47
    iget-object v3, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 48
    .line 49
    aget v3, v3, v2

    .line 50
    .line 51
    iget-object v4, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 52
    .line 53
    aget-object v4, v4, v2

    .line 54
    .line 55
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyBarView;->b(ILcom/mycompany/app/view/MyIconView;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_6
    :goto_4
    return-void
.end method
