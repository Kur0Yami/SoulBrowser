.class Lcom/mycompany/app/main/MainTxtView$44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainTxtView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$44;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$44;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 10
    .line 11
    const/16 v3, -0x4d2

    .line 12
    .line 13
    if-ne v1, v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput v3, v0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTxtView;->C2:Z

    .line 19
    .line 20
    iget v3, v0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-ne v3, v4, :cond_2

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    iput v1, v0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainTxtView;->a1(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget v1, v0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainTxtView;->W0(IZ)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTxtView;->P2:Z

    .line 39
    .line 40
    return-void
.end method
