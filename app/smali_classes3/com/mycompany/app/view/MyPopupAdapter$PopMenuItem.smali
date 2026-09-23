.class public Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyPopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopMenuItem"
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 7
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 21
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    .line 22
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->f:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 3
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->b:I

    .line 4
    iput-object p3, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    .line 14
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/Object;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 26
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    .line 28
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->f:Z

    .line 29
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->g:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 10
    iput-object p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p2, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    return-void
.end method
