.class Lcom/mycompany/app/main/MainTxtView$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$33;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$33;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 9
    .line 10
    iget v3, v1, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 11
    .line 12
    if-ne v3, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainTxtAdapter;->v(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainTxtAdapter;->v(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainTxtView;->Q2:Z

    .line 25
    .line 26
    return-void
.end method
