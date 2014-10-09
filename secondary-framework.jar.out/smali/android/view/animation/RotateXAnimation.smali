.class public Landroid/view/animation/RotateXAnimation;
.super Landroid/view/animation/Animation;
.source "RotateXAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field mContext:Landroid/content/Context;

.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    .line 41
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    .line 42
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    .line 174
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    .line 92
    iput p1, p0, Landroid/view/animation/RotateXAnimation;->mFromDegrees:F

    .line 93
    iput p2, p0, Landroid/view/animation/RotateXAnimation;->mToDegrees:F

    .line 94
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    .line 95
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    .line 96
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    .line 40
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    .line 42
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    .line 174
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    .line 114
    iput p1, p0, Landroid/view/animation/RotateXAnimation;->mFromDegrees:F

    .line 115
    iput p2, p0, Landroid/view/animation/RotateXAnimation;->mToDegrees:F

    .line 117
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    .line 118
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    .line 119
    iput p3, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    .line 120
    iput p4, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    .line 121
    invoke-direct {p0}, Landroid/view/animation/RotateXAnimation;->initializePivotPoint()V

    .line 122
    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    .line 40
    iput v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    .line 42
    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    .line 174
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    .line 151
    iput p1, p0, Landroid/view/animation/RotateXAnimation;->mFromDegrees:F

    .line 152
    iput p2, p0, Landroid/view/animation/RotateXAnimation;->mToDegrees:F

    .line 154
    iput p4, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    .line 155
    iput p3, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    .line 156
    iput p6, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    .line 157
    iput p5, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    .line 158
    invoke-direct {p0}, Landroid/view/animation/RotateXAnimation;->initializePivotPoint()V

    .line 159
    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    .line 169
    :cond_0
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    .line 170
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    .line 172
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v6, 0x0

    .line 177
    iget v3, p0, Landroid/view/animation/RotateXAnimation;->mFromDegrees:F

    iget v4, p0, Landroid/view/animation/RotateXAnimation;->mToDegrees:F

    iget v5, p0, Landroid/view/animation/RotateXAnimation;->mFromDegrees:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 178
    .local v0, degrees:F
    invoke-virtual {p0}, Landroid/view/animation/RotateXAnimation;->getScaleFactor()F

    move-result v1

    .line 179
    .local v1, scale:F
    iget v3, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 181
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 182
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 183
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    .line 184
    .local v2, z:F
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 194
    :goto_0
    return-void

    .line 186
    .end local v2           #z:F
    :cond_0
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 187
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 188
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    .line 190
    .restart local v2       #z:F
    iget-object v3, p0, Landroid/view/animation/RotateXAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 191
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    neg-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 192
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    mul-float/2addr v4, v1

    iget v5, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    mul-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 199
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateXAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotX:F

    .line 200
    iget v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/RotateXAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateXAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateXAnimation;->mPivotY:F

    .line 201
    return-void
.end method
