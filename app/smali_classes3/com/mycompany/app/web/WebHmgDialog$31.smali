.class Lcom/mycompany/app/web/WebHmgDialog$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebHmgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$31;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$31;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->S:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->R:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->d0:I

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->c0:I

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->d0:I

    .line 25
    .line 26
    div-int v3, v1, v2

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x1

    .line 29
    .line 30
    rem-int/2addr v1, v2

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v4, v3, 0x2

    .line 34
    .line 35
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->a0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->c0:I

    .line 42
    .line 43
    div-int v3, v1, v2

    .line 44
    .line 45
    add-int/lit8 v5, v3, 0x1

    .line 46
    .line 47
    rem-int/2addr v1, v2

    .line 48
    if-lez v1, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v3, 0x2

    .line 51
    .line 52
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->S:Lcom/mycompany/app/view/MyScrollBar;

    .line 53
    .line 54
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->F0:Z

    .line 59
    .line 60
    return-void
.end method
