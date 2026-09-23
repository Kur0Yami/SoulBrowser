.class Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/main/MainTransText$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransText$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransText$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransText$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransText;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/main/MainTransText;->l:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v0, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/MainTransText$8;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/main/MainTransText$8;-><init>(Lcom/mycompany/app/main/MainTransText;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainTransText;->c(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransText;->m:Z

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransText;->p:Z

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransText;->p:Z

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lcom/mycompany/app/main/MainTransText;->q:I

    .line 50
    .line 51
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1$1;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1$1;-><init>(Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x64

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    return-void
.end method
