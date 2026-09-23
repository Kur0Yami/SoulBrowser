.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$16;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$16;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 6
    .line 7
    if-eqz v2, :cond_3

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 14
    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 27
    .line 28
    div-int v4, v2, v3

    .line 29
    .line 30
    add-int/lit8 v5, v4, 0x1

    .line 31
    .line 32
    rem-int/2addr v2, v3

    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    add-int/lit8 v5, v4, 0x2

    .line 36
    .line 37
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 44
    .line 45
    div-int v4, v2, v3

    .line 46
    .line 47
    add-int/lit8 v6, v4, 0x1

    .line 48
    .line 49
    rem-int/2addr v2, v3

    .line 50
    if-lez v2, :cond_2

    .line 51
    .line 52
    add-int/lit8 v6, v4, 0x2

    .line 53
    .line 54
    :cond_2
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 55
    .line 56
    invoke-virtual {v1, v5, v6}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->z:Z

    .line 61
    .line 62
    return-void
.end method
