.class Lcom/mycompany/app/web/WebVideoFull$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$61;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$61;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$61;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/web/WebVideoFull;->a1:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p1, Lcom/mycompany/app/web/WebVideoFull;->a1:F

    .line 7
    .line 8
    sget-object v1, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 9
    .line 10
    rem-int/lit8 p2, p2, 0x8

    .line 11
    .line 12
    aget p2, v1, p2

    .line 13
    .line 14
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p2, p1, Lcom/mycompany/app/web/WebVideoFull;->g1:F

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    :goto_0
    return v1

    .line 29
    :cond_1
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$61$1;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$61$1;-><init>(Lcom/mycompany/app/web/WebVideoFull$61;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x1f4

    .line 35
    .line 36
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return v1
.end method
