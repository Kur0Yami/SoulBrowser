.class Lcom/mycompany/app/web/WebNestFrame$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$9;->c:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$9;->c:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-wide v2, v0, Lcom/mycompany/app/web/WebNestFrame;->i:J

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v1, v2, v4

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getValidPageUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestFrame;->getListToStr()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/db/book/DbTabState;->f(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestFrame;->s:Z

    .line 44
    .line 45
    return-void
.end method
