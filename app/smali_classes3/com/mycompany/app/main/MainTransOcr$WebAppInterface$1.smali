.class Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransOcr;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/main/MainTransOcr;->k:I

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->m:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v0, Lcom/mycompany/app/main/MainTransOcr;->m:Ljava/lang/String;

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
    new-instance v2, Lcom/mycompany/app/main/MainTransOcr$10;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/main/MainTransOcr$10;-><init>(Lcom/mycompany/app/main/MainTransOcr;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainTransOcr;->d(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransOcr;->l:Z

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransOcr;->o:Z

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransOcr;->o:Z

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lcom/mycompany/app/main/MainTransOcr;->p:I

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1$1;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1$1;-><init>(Lcom/mycompany/app/main/MainTransOcr$WebAppInterface$1;)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v2, 0x64

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    return-void
.end method
