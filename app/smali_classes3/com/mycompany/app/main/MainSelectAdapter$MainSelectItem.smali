.class public Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainSelectItem"
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 3
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 13
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 14
    iput p3, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 17
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    .line 19
    iput-object p3, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 9
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    .line 10
    iput-object p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    const p2, -0x70708

    .line 22
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->b:I

    .line 23
    iput p3, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    return-void
.end method
