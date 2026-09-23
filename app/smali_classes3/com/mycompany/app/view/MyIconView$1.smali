.class Lcom/mycompany/app/view/MyIconView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyIconView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyIconView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconView$1;->c:Lcom/mycompany/app/view/MyIconView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconView$1;->c:Lcom/mycompany/app/view/MyIconView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x64

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/db/book/DbBookSearch;->d(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/mycompany/app/db/book/DbBookSearch;->j(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyIconView;->c:Z

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/view/MyIconView;->o:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/view/MyIconView$1$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconView$1$1;-><init>(Lcom/mycompany/app/view/MyIconView$1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
